class Node:
    def __init__(self, patient_id):
        self.patient_id = patient_id
        self.next = None

class PatientQueue:
    def __init__(self):
        self.head = None
        self.tail = None  # Keep track of the last node for O(1) addition

    def add_patient(self, patient_id):
        n = Node(patient_id.strip())
        if not self.head:
            self.head = self.tail = n
        else:
            self.tail.next = n
            self.tail = n
        print(f"Patient {patient_id} added to the queue.\n")

    def remove_patient(self, patient_id):
        patient_id = patient_id.strip()
        t, p = self.head, None
        while t and t.patient_id != patient_id:
            p, t = t, t.next
        if not t:
            print(f"Patient {patient_id} not found in the queue.\n")
            return
        if p:
            p.next = t.next
        else:
            self.head = t.next
        if t == self.tail:  # Update tail if last node is removed
            self.tail = p
        print(f"Patient {patient_id} removed from the queue.\n")

    def show_queue(self):
        if not self.head:
            print("Queue is empty.\n")
            return
        t = self.head
        queue_list = []
        while t:
            queue_list.append(t.patient_id)
            t = t.next
        print("Queue: " + " -> ".join(queue_list) + " -> None\n")

# -------------------- Main Program --------------------

q = PatientQueue()

while True:
    print("PATIENT QUEUE MANAGEMENT")
    print("1. Add Patient")
    print("2. Remove Patient")
    print("3. Show Queue")
    print("4. Exit")

    choice = input("Choice: ").strip()

    if choice == "1":
        patient_id = input("Patient ID: ")
        q.add_patient(patient_id)
    elif choice == "2":
        patient_id = input("Patient ID: ")
        q.remove_patient(patient_id)
    elif choice == "3":
        q.show_queue()
    elif choice == "4":
        print("Exiting program.")
        break
    else:
        print("Invalid choice.\n")
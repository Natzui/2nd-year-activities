# Stack using List with CRUD Operations

stack = []
max_size = int(input("Enter the maximum size of the stack: "))

while True:
    print("\n--- STACK MENU ---")
    print("1. Push (Create)")
    print("2. Peek (Read - Top Element)")
    print("3. Display (Read - All Elements)")
    print("4. Pop (Delete)")
    print("5. Exit")

    choice = int(input("Enter your choice: "))

    # CREATE → PUSH
    if choice == 1:
        if len(stack) >= max_size:
            print("Stack Overflow! Cannot push more elements.")
        else:
            value = input("Enter value to push: ")
            stack.append(value)
            print(f"{value} pushed to stack.")

    # READ → PEEK
    elif choice == 2:
        if len(stack) == 0:
            print("Stack is empty. Nothing to peek.")
        else:
            print("Top element:", stack[-1])

    # READ → DISPLAY
    elif choice == 3:
        if len(stack) == 0:
            print("Stack is empty.")
        else:
            print("Stack elements (top to bottom):")
            for i in reversed(stack):
                print(i)

    # DELETE → POP
    elif choice == 4:
        if len(stack) == 0:
            print("Stack Underflow! Nothing to pop.")
        else:
            removed = stack.pop()
            print(f"{removed} popped from stack.")

    # EXIT
    elif choice == 5:
        print("Program terminated.")
        break

    else:
        print("Invalid choice. Please try again.")

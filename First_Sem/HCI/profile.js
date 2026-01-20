function loadProfileBorrowed() {
  let borrowedBooks = JSON.parse(localStorage.getItem("borrowedBooks")) || [];
  let list = document.getElementById("profileBorrowedList");
  list.innerHTML = "";

  borrowedBooks.forEach(book => {
    let li = document.createElement("li");
    li.textContent = book;
    list.appendChild(li);
  });
}

function animateHeading() {
  const heading = document.getElementById("animatedText");
  const text = heading.textContent;
  heading.textContent = "";

  // Split into spans (preserve spaces)
  text.split("").forEach(char => {
    const span = document.createElement("span");
    span.innerHTML = char === " " ? "&nbsp;" : char; // keep spaces
    span.style.display = "inline-block";
    span.style.opacity = "0";
    heading.appendChild(span);
  });

  // Infinite animation
  gsap.to("#animatedText span", {
    duration: 0.8,
    opacity: 1,
    y: 0,
    stagger: 0.1,
    ease: "power3.inOut",
    repeat: -1,      // infinite loop
    yoyo: true       // reverse back
  });
}

window.onload = () => {
  loadProfileBorrowed();
  animateHeading();
};


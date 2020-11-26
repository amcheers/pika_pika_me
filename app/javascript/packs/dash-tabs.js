const dashTabBooking = document.querySelector(".dash-tab-booking")
const booking = document.querySelector(".booking")

const dashTabOwned = document.querySelector(".dash-tab-owned")
const owned = document.querySelector(".owned")

export const activateBookingTab = () => {
  dashTabBooking.addEventListener("click", () => {
    booking.classList.remove("deactive");
    booking.classList.add("active");
    owned.classList.remove("active");
    owned.classList.add("deactive");
  });
};

export const activateDashTab = () => {
  dashTabOwned.addEventListener("click", (event) => {
    owned.classList.remove("deactive");
    owned.classList.add("active");
    booking.classList.remove("active");
    booking.classList.add("deactive");
  });
};

const displayGenba = () => {
  // Selecting the HTML elements
  const selectCompany = document.querySelector("#company");
  const linkCompany = document.querySelector("#link-company");

  // Listen to a change on the dropdown
  selectCompany.addEventListener("change", (event) => {
    // get the name of the selected company
    const companyName = selectCompany.selectedOptions[0].innerText;
    window.open(`${window.location.origin}${window.location.pathname}?company=${companyName}`, "_self");
  });
}

export { displayGenba };

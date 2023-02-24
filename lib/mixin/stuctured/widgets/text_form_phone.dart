part of sign_in;

Widget conuntry_phone_textform() {
  return Row(
    children: <Widget>[
      // Expanded(
      //   child: CountryPickerDropdown(
      //     initialValue: 'in',
      //     itemBuilder: _buildDropdownItem,
      //     onValuePicked: (Country country) {
      //       print("${country.name}");
      //     },
      //   ),
      // ),
      Expanded(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: TextField(
          style: TextStyle(fontSize: 17),
          autocorrect: true,
          // controller: widget.textController,
          onChanged: (numberstr) {},
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            suffix:
                Visibility(visible: true, child: Icon(Icons.cancel_outlined)),
            prefixIcon: Icon(Icons.phone),
            prefix: Text("+91"),
            contentPadding: EdgeInsets.only(left: 7, bottom: 4, right: 7),
            hintText: ' Phone Number ',
            hintStyle: TextStyle(color: Colors.grey),
            /* errorText: provider.errMsg!=""?provider.errMsg:"",*/

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(color: Colors.white, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      )),
    ],
  );
}

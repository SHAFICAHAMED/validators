<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validationControlls.aspx.cs" Inherits="validators.validationControlls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Registration Form</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input[type="text"], 
        .form-group input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .form-group input:focus {
            border-color: #007bff;
            outline: none;
        }
        .form-group .error {
            color: #d9534f;
            font-size: 0.9em;
        }
        .btn-submit {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            display: block;
            width: 100%;
            font-size: 1.1em;
        }
        .btn-submit:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body><form id="RegistrationForm" runat="server">
   
       <div class="container">
    <h2> 
    
    
        <!-- Name Field -->
        <div class="form-group">
            <label for="txtName">Name</label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                ControlToValidate="txtName"
                ErrorMessage="Name is required" 
                CssClass="error"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator 
                ID="NameValidator"
                ControlToValidate="txtName"
                ValidationExpression=".{3,50}" 
                ErrorMessage="Name must be between 3 and 50 characters" 
                CssClass="error"
                runat="server"></asp:RegularExpressionValidator>
        </div>

        <!-- Age Field -->
        <div class="form-group">
            <label for="txtAge">Age</label>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" 
                ControlToValidate="txtAge"
                ErrorMessage="Age is required" 
                CssClass="error"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RangeValidator 
                ID="RangeValidator1" 
                ControlToValidate="txtAge"
                MinimumValue="18" 
                MaximumValue="65" 
                Type="Integer" 
                ErrorMessage="Age must be between 18 and 65" 
                CssClass="error"
                runat="server"></asp:RangeValidator>
        </div>

        <!-- Email Field -->
        <div class="form-group">
            <label for="txtEmail">Email</label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator3" 
                ControlToValidate="txtEmail"
                ErrorMessage="Email is required" 
                CssClass="error"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator 
                ID="RegexValidator1" 
                ControlToValidate="txtEmail"
                ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" 
                ErrorMessage="Enter a valid email" 
                CssClass="error"
                runat="server"></asp:RegularExpressionValidator>
        </div>

        <!-- Password Field -->
        <div class="form-group">
            <label for="txtPassword">Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator4" 
                ControlToValidate="txtPassword"
                ErrorMessage="Password is required" 
                CssClass="error"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator 
                ID="PasswordValidator"
                ControlToValidate="txtPassword"
                ValidationExpression=".{6,}" 
                ErrorMessage="Password must be at least 6 characters" 
                CssClass="error"
                runat="server"></asp:RegularExpressionValidator>
        </div>

        <!-- Confirm Password Field -->
        <div class="form-group">
            <label for="txtConfirmPassword">Confirm Password</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator5" 
                ControlToValidate="txtConfirmPassword"
                ErrorMessage="Confirm Password is required" 
                CssClass="error"
                runat="server"></asp:RequiredFieldValidator>
            <asp:CompareValidator 
                ID="CompareValidator1" 
                ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword" 
                ErrorMessage="Passwords do not match" 
                CssClass="error"
                runat="server"></asp:CompareValidator>
        </div>

        <!-- Submit Button -->
        <asp:Button ID="btnSubmit" Text="Submit" CssClass="btn-submit" OnClick="btnSubmit_Click" runat="server" />
        
    
</div>
    </form>
</body>
</html>

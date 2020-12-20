import { adminRoot } from "./config";

const data = [{
  id: "dashboards",
  icon: "iconsminds-shop-4",
  label: "menu.dashboards",
  to: `${adminRoot}/dashboards/analytics`,
},
{
  id: "profile",
  icon: "simple-icon-user-following",
  label: "Profile",
  to: `${adminRoot}/profile`,
  
},
{
  id: "program",
  icon: "simple-icon-game-controller",
  label: "Program",
  to: `${adminRoot}/program`,
  
},
{
  id: "achievement",
  icon: "simple-icon-badge",
  label: "Achievement",
  to: `${adminRoot}/achievement`,
  
},
{
  id: "registration",
  icon: "iconsminds-gear-2",
  label: "Registration",
  to: `${adminRoot}/registration`,
  
},
{
  id: "logout",
  icon: "iconsminds-power-2",
  label: "Logout",
  to: "/user/login",
}
];
export default data;

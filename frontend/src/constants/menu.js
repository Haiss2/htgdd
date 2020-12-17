import { adminRoot } from "./config";
import { UserRole } from "../utils/auth.roles";

const data = [{
  id: "dashboards",
  icon: "iconsminds-shop-4",
  label: "menu.dashboards",
  to: `${adminRoot}/dashboards/analytics`,
},
{
  id: "pages",
  icon: "iconsminds-digital-drawing",
  label: "Program",
  to: `${adminRoot}/pages/product/data-list`,
  
}

];
export default data;

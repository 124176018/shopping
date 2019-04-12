package com.aishang.po;
    public class Cities {
        private Integer area_code;
        private Integer parent_area_code;
        private String  area_name;
        private  Integer area_type;
        private  Integer create_time;

        public Integer getArea_code() {
            return area_code;
        }

        public void setArea_code(Integer area_code) {
            this.area_code = area_code;
        }

        public Integer getParent_area_code() {
            return parent_area_code;
        }

        public void setParent_area_code(Integer parent_area_code) {
            this.parent_area_code = parent_area_code;
        }

        public String getArea_name() {
            return area_name;
        }

        public void setArea_name(String area_name) {
            this.area_name = area_name;
        }

        public Integer getArea_type() {
            return area_type;
        }

        public void setArea_type(Integer area_type) {
            this.area_type = area_type;
        }

        public Integer getCreate_time() {
            return create_time;
        }

        public void setCreate_time(Integer create_time) {
            this.create_time = create_time;
        }

        @Override
        public String toString() {
            return "cities{" +
                    "area_code=" + area_code +
                    ", parent_area_code=" + parent_area_code +
                    ", area_name='" + area_name + '\'' +
                    ", area_type=" + area_type +
                    ", create_time=" + create_time +
                    '}';
        }
    }



package config

type Conf struct {
	Modules []*Module `yaml:"module" json:"module"`
}

type Module struct {
	Name     string `yaml:"name" json:"name"`
	Username string `yaml:"username" json:"username"`
	Password string `yaml:"password" json:"password"`
}

package controllers

import "github.com/revel/revel"

type Goals struct {
	*revel.Controller
}

func (c Goals) Index() revel.Result {
	return c.Render()
}

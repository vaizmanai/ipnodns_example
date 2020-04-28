package example

import (
	"fmt"
	"net/http"
	"net/url"
)

func RefreshIp(login string, secret string) int {
	formData := url.Values{
		"address": {"193.176.79.93"}, //не обязательный параметр
	}

	resp, err := http.PostForm(fmt.Sprintf("https://ipnodns.ru/api/v1/update/%s/%s", login, secret), formData)
	if err != nil {
		panic(err)
	}

	return resp.StatusCode
}

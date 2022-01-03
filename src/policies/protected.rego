package asertonextjs.GET.api.protected

import input.policy.path
import input.user.attributes.roles as user_roles

default allowed = false

allowed {
	some index
	data.roles[user_roles[index]].perms[path].allowed
}

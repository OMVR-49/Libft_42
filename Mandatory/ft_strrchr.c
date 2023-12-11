/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ojebbari <ojebbari@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/07 18:59:50 by ojebbari          #+#    #+#             */
/*   Updated: 2023/12/11 01:33:09 by ojebbari         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../Include/libft.h"

char	*ft_strrchr(const char *s, int c)
{
	int		i;
	char	*po;

	i = ft_strlen(s);
	po = (char *)s;
	if (c == '\0')
		return (&po[i]);
	while (i >= 0)
	{
		if (po[i] == (char)c)
			return (&po[i]);
		i--;
	}
	return (NULL);
}

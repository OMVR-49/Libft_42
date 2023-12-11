/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ojebbari <ojebbari@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/11 17:11:04 by ojebbari          #+#    #+#             */
/*   Updated: 2023/12/11 01:33:09 by ojebbari         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../Include/libft.h"

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
	size_t				i;
	unsigned char		*ds;
	const unsigned char	*sr;

	i = 0;
	ds = dst;
	sr = src;
	if (dst == src)
		return (dst);
	while (i < n)
	{
		ds[i] = sr[i];
		i++;
	}
	return (ds);
}

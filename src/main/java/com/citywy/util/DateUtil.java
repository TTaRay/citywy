package com.citywy.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	/**
	 * 格式化日期，显示指定格式
	 * @param date 给定日期
	 * @param formatParam 类型,如yyyy-MM-dd
	 * @return 格式化后的String类型值
	 */
	public static String getFormatDate(Date date, String formatParam) {
		if (date == null) {
			return null;
		}
		SimpleDateFormat formatter = new SimpleDateFormat(formatParam);
		return formatter.format(date);
	}

	//--BEGIN--计算当前日期和提供的日期之间的间隔
	private static final long ONE_MINUTE = 60000L;
	private static final long ONE_HOUR = 3600000L;
	private static final long ONE_DAY = 86400000L;
	private static final long ONE_WEEK = 604800000L;
 
	private static final String ONE_SECOND_AGO = "秒前";
	private static final String ONE_MINUTE_AGO = "分钟前";
	private static final String ONE_HOUR_AGO = "小时前";
	private static final String ONE_DAY_AGO = "天前";
	private static final String ONE_MONTH_AGO = "月前";
	private static final String ONE_YEAR_AGO = "年前";
	private static long toSeconds(long date) {
		return date / 1000L;
	}
	private static long toMinutes(long date) {
		return toSeconds(date) / 60L;
	}
	private static long toHours(long date) {
		return toMinutes(date) / 60L;
	}
	private static long toDays(long date) {
		return toHours(date) / 24L;
	}
	private static long toMonths(long date) {
		return toDays(date) / 30L;
	}
	private static long toYears(long date) {
		return toMonths(date) / 365L;
	}
	/**
	 * 计算当前时间距离给定Date间隔
	 * @param date
	 * @return
	 */
	public static String formatInterval(Date date) {
		long delta = new Date().getTime() - date.getTime();
		if (delta < 1L * ONE_MINUTE) {
			long seconds = toSeconds(delta);
			return (seconds <= 0 ? 1 : seconds) + ONE_SECOND_AGO;
		}
		if (delta < 60L * ONE_MINUTE) {
			long minutes = toMinutes(delta);
			return (minutes <= 0 ? 1 : minutes) + ONE_MINUTE_AGO;
		}
		if (delta < 24L * ONE_HOUR) {
			long hours = toHours(delta);
			return (hours <= 0 ? 1 : hours) + ONE_HOUR_AGO;
		}
		if (delta < 48L * ONE_HOUR) {
			return "昨天";
		}
		if (delta < 30L * ONE_DAY) {
			long days = toDays(delta);
			return (days <= 0 ? 1 : days) + ONE_DAY_AGO;
		}
		if (delta < 12L * 4L * ONE_WEEK) {
			long months = toMonths(delta);
			return (months <= 0 ? 1 : months) + ONE_MONTH_AGO;
		} else {
			long years = toYears(delta);
			return (years <= 0 ? 1 : years) + ONE_YEAR_AGO;
		}
	}
	//--END--计算当前日期和提供的日期之间的间隔
	
	
}

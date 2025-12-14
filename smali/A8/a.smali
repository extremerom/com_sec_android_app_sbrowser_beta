.class public abstract synthetic LA8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "textList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic B(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "startDateList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic C(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "endDateList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic D(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "unresolvedStartDateTimeUnitList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Ljava/lang/Object;)Landroid/app/LocaleManager;
    .locals 0

    check-cast p0, Landroid/app/LocaleManager;

    return-object p0
.end method

.method public static bridge synthetic b(Landroid/app/LocaleManager;)Landroid/os/LocaleList;
    .locals 0

    invoke-virtual {p0}, Landroid/app/LocaleManager;->getSystemLocales()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Landroid/os/IBinder;)Landroid/os/Parcel;
    .locals 0

    invoke-static {p0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Landroidx/activity/q;)Landroid/window/OnBackInvokedDispatcher;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "entityTypeList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f()Ljava/lang/Class;
    .locals 1

    const-class v0, Landroid/app/LocaleManager;

    return-object v0
.end method

.method public static bridge synthetic g(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 2

    const-string v0, "appWidgetSizes"

    const-class v1, Landroid/util/SizeF;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/os/Parcel;)V
    .locals 0

    invoke-virtual {p0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    return-void
.end method

.method public static bridge synthetic i(Landroid/os/Bundle;)[Ljava/lang/Object;
    .locals 2

    const-string v0, "previewRemoteViews"

    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "hasMonthArray"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "unresolvedEndDateTimeUnitList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "bankAccountNumberList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "repeatInfoList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "bankNameList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "bankTransferAmountList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "unitValue"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "unitSymbol"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "recurrenceInfoList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "poiMappableArray"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic t(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "isRelativeList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "startIndexList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic v(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "isSpecialDayArray"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "hasYearArray"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "hasDayArray"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic y(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "hasRecurrenceWithinRangeArray"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Landroid/os/Bundle;)Ljava/io/Serializable;
    .locals 2

    const-string v0, "endtIndexList"

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

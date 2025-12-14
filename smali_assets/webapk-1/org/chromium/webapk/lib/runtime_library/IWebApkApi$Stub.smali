.class public abstract Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;
.super Landroid/os/Binder;
.source "chromium-webapk-1.dex-default--1"

# interfaces
.implements Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;


# static fields
.field static final TRANSACTION_cancelNotification:I = 0x3

.field static final TRANSACTION_checkNotificationPermission:I = 0x6

.field static final TRANSACTION_getSmallIconId:I = 0x1

.field static final TRANSACTION_notificationPermissionEnabled:I = 0x4

.field static final TRANSACTION_notifyNotification:I = 0x2

.field static final TRANSACTION_notifyNotificationWithChannel:I = 0x5

.field static final TRANSACTION_requestNotificationPermission:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;

    return-object v0

    :cond_1
    new-instance v0, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;->requestNotificationPermission(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1, v1}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$_Parcel;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    return v1

    :pswitch_1
    invoke-interface {p0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;->checkNotificationPermission()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-static {p2, v0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, v0, p2}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;->notifyNotificationWithChannel(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    invoke-interface {p0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;->notificationPermissionEnabled()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;->cancelNotification(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-static {p2, v0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Notification;

    invoke-interface {p0, p1, p4, p2}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;->notifyNotification(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    invoke-interface {p0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;->getSmallIconId()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

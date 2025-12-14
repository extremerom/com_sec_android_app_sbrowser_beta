.class Lcom/osp/app/signin/sasdk/common/Constants$StandAloneAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osp/app/signin/sasdk/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandAloneAction"
.end annotation


# static fields
.field static final ACTION_REQUEST_CHANGE_PW:Ljava/lang/String; = "com.samsung.android.samsungaccount.action.REQUEST_CHANGE_PASSWORD_FROM_WEB_SDK"

.field static final ACTION_REQUEST_CONFIRM_PW:Ljava/lang/String; = "com.samsung.android.samsungaccount.action.REQUEST_CONFIRM_PASSWORD_FROM_WEB_SDK"

.field static final ACTION_REQUEST_SIGN_IN:Ljava/lang/String; = "com.samsung.android.samsungaccount.action.REQUEST_SIGN_IN_FROM_WEB_SDK"

.field static final ACTION_REQUEST_SIGN_OUT:Ljava/lang/String; = "com.samsung.android.samsungaccount.action.REQUEST_SIGN_OUT_FROM_WEB_SDK"

.field static final ACTION_REQUEST_SIGN_UP:Ljava/lang/String; = "com.samsung.android.samsungaccount.action.REQUEST_SIGN_UP_FROM_WEB_SDK"

.field static final ACTION_REQUEST_SIGN_UP_WITH_PARTNER_ACCOUNT:Ljava/lang/String; = "com.samsung.android.samsungaccount.action.REQUEST_SIGN_UP_WITH_PARTNER_ACCOUNT_FROM_WEB_SDK"

.field static final ACTION_START_CONNECTED_SERVICES:Ljava/lang/String; = "com.samsung.android.mobileservice.action.ACTION_WEBVIEW_WITH_PASSWORD_EXTERNAL"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "StandAloneAction can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

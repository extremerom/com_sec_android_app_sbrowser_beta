.class public Lcom/osp/app/signin/sasdk/common/Constants$ThirdParty$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osp/app/signin/sasdk/common/Constants$ThirdParty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final ACCOUNT_MODE:Ljava/lang/String; = "account_mode"

.field public static final AUTH_CODE:Ljava/lang/String; = "auth_code"

.field public static final BIRTH_DATE:Ljava/lang/String; = "birth_date"

.field public static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final CODE_VERIFIER:Ljava/lang/String; = "code_verifier"

.field public static final DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final DISCLAIMER_FLAG:Ljava/lang/String; = "disclaimer_flag"

.field public static final FIRST_NAME:Ljava/lang/String; = "first_name"

.field public static final ID_TOKEN:Ljava/lang/String; = "id_token"

.field public static final IPT_LOGIN_ID:Ljava/lang/String; = "ipt_login_id"

.field public static final IS_SAMSUNG_INTERNET:Ljava/lang/String; = "is_samsung_internet"

.field public static final LAST_NAME:Ljava/lang/String; = "last_name"

.field public static final OSP_VER:Ljava/lang/String; = "OSP_VER"

.field public static final PARTNER_CLIENT_ID:Ljava/lang/String; = "partner_client_id"

.field public static final PARTNER_NAME:Ljava/lang/String; = "partner_name"

.field public static final REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final REPLACEABLE_CLIENT_CONNECT_YN:Ljava/lang/String; = "replaceable_client_connect_yn"

.field public static final REPLACEABLE_CLIENT_ID:Ljava/lang/String; = "replaceable_client_id"

.field public static final REPLACEABLE_DEVICE_PHYSICAL_ADDRESS_TEXT:Ljava/lang/String; = "replaceable_device_physical_address_text"

.field public static final RETURN_TYPE:Ljava/lang/String; = "return_type"

.field public static final SCOPE:Ljava/lang/String; = "scope"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final URI:Ljava/lang/String; = "uri"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Request can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

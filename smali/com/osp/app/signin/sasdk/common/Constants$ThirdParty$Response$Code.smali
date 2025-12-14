.class public Lcom/osp/app/signin/sasdk/common/Constants$ThirdParty$Response$Code;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osp/app/signin/sasdk/common/Constants$ThirdParty$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Code"
.end annotation


# static fields
.field public static final ACCESS_TOKEN_INVALID:I = 0x3f5

.field public static final ACTIVITY_NULL:I = 0x3ec

.field public static final AUTH_CODE_INVALID:I = 0x3f6

.field public static final BUNDLE_NULL:I = 0x3ee

.field public static final CLIENT_ID_INVALID:I = 0x3ef

.field public static final CODE_VERIFIER_INVALID:I = 0x3f4

.field public static final CONTEXT_NULL:I = 0x3eb

.field public static final ERROR_FROM_PARTNER:I = 0x3fc

.field public static final INTERNAL_ERROR:I = 0x3f3

.field public static final IPT_LOGIN_ID_INVALID:I = 0x3f1

.field public static final ISA_SDKRESPONSE_CALLBACK_NULL:I = 0x3ed

.field public static final NETWORK_NOT_AVAILABLE:I = 0x3f2

.field public static final NO_BROWSERS_AVAILABLE:I = 0x3e9

.field public static final PARTNER_CLIENT_ID_INVALID:I = 0x3f7

.field public static final PARTNER_NAME_INVALID:I = 0x3f8

.field public static final REDIRECT_URI_INVALID:I = 0x3f0

.field public static final SA_APPLICATION_AVAILABLE:I = 0x3ea

.field public static final SA_DENIED_FROM_PARTNER:I = 0x3fb

.field public static final SA_NOT_LINKED_FROM_PARTNER:I = 0x3fa

.field public static final STAND_ALONE_SA_NOT_AVAILABLE:I = 0x3f9


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Code can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

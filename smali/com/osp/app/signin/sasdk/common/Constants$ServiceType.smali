.class public Lcom/osp/app/signin/sasdk/common/Constants$ServiceType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osp/app/signin/sasdk/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceType"
.end annotation


# static fields
.field public static final CHANGE_PASSWORD:I = 0x6c

.field public static final CHECK_DOMAIN:I = 0x65

.field public static final CHECK_LINKING_STATUS:I = 0x6d

.field public static final CONFIRM_PASSWORD:I = 0x6a

.field public static final GET_ENTRY_POINT_OF_IDM:I = 0x66

.field public static final REQUEST_APP_LINKING:I = 0x6f

.field public static final REQUEST_WEB_LINKING:I = 0x6e

.field public static final SIGNIN:I = 0x69

.field public static final SIGNOUT:I = 0x6b

.field public static final SIGNUP:I = 0x67

.field public static final SIGNUP_WITH_PARTNER_ACCOUNT:I = 0x68

.field public static final START_CONNECTED_SERVICES:I = 0x70


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ServiceType can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

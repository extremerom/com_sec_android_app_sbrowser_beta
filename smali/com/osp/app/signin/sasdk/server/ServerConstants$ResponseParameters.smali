.class public Lcom/osp/app/signin/sasdk/server/ServerConstants$ResponseParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osp/app/signin/sasdk/server/ServerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseParameters"
.end annotation


# static fields
.field public static final CHKDONUM:Ljava/lang/String; = "chkDoNum"

.field public static final CONFIRM_PASSWORD_URI:Ljava/lang/String; = "confirmPasswordURI"

.field public static final PBE_KY_SPC_ITERS:Ljava/lang/String; = "pbeKySpcIters"

.field public static final PKI_PUBLIC_KEY:Ljava/lang/String; = "pkiPublicKey"

.field public static final SIGNIN_URI:Ljava/lang/String; = "signInURI"

.field public static final SIGNOUT_URI:Ljava/lang/String; = "signOutURI"

.field public static final SIGNUP_URI:Ljava/lang/String; = "signUpURI"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ResponseParameters can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

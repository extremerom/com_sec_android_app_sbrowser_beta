.class public Lcom/osp/app/signin/sasdk/common/Constants$ThirdParty$Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osp/app/signin/sasdk/common/Constants$ThirdParty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/osp/app/signin/sasdk/common/Constants$ThirdParty$Response$Code;,
        Lcom/osp/app/signin/sasdk/common/Constants$ThirdParty$Response$Result;
    }
.end annotation


# static fields
.field public static final CODE:Ljava/lang/String; = "code"

.field public static final RESULT:Ljava/lang/String; = "result"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Response can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

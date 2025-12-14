.class public final Lcom/osp/app/signin/sasdk/common/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/osp/app/signin/sasdk/common/Constants$ThirdParty;,
        Lcom/osp/app/signin/sasdk/common/Constants$ServiceType;,
        Lcom/osp/app/signin/sasdk/common/Constants$Result;,
        Lcom/osp/app/signin/sasdk/common/Constants$StandAloneAction;,
        Lcom/osp/app/signin/sasdk/common/Constants$PackageName;
    }
.end annotation


# static fields
.field public static final IS_NOPROXY:Z = true


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Constants can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

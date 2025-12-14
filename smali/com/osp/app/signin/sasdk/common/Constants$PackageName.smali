.class public Lcom/osp/app/signin/sasdk/common/Constants$PackageName;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osp/app/signin/sasdk/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageName"
.end annotation


# static fields
.field public static final NETFLIX:Ljava/lang/String; = "com.netflix.mediaclient"

.field public static final SAMSUNG_ACCOUNT:Ljava/lang/String; = "com.osp.app.signin"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "PackageName can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

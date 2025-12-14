.class public Lcom/osp/app/signin/sasdk/server/UrlManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20;
    }
.end annotation


# static fields
.field private static final HTTPS_PROTOCOL:Ljava/lang/String; = "https://"

.field private static final HTTP_PROTOCOL:Ljava/lang/String; = "http://"

.field private static final TAG:Ljava/lang/String; = "UrlManager"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "UrlManager class can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

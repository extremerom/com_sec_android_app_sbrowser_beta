.class public final Lcom/osp/app/signin/sasdk/server/ServerConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/osp/app/signin/sasdk/server/ServerConstants$ResponseParameters;,
        Lcom/osp/app/signin/sasdk/server/ServerConstants$RequestParameters;,
        Lcom/osp/app/signin/sasdk/server/ServerConstants$ServerUrls;
    }
.end annotation


# static fields
.field public static final SDK_CLIENT_ID:Ljava/lang/String; = "08fki92zu4"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ServerConstants can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

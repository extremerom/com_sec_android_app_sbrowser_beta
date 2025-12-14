.class public Lcom/osp/app/signin/sasdk/server/ServerConstants$ServerUrls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osp/app/signin/sasdk/server/ServerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerUrls"
.end annotation


# static fields
.field public static final API_SERVER_URL:Ljava/lang/String; = "api_server_url"

.field public static final AUTH_SERVER_URL:Ljava/lang/String; = "auth_server_url"

.field public static final IDM_SERVER_URL:Ljava/lang/String; = "idm_server_url"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ServerUrls can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

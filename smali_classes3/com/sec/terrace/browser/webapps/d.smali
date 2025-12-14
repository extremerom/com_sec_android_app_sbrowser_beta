.class public final synthetic Lcom/sec/terrace/browser/webapps/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient$ApiUseCallback;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;

.field public final synthetic b:Landroid/app/Notification$Builder;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;Landroid/app/Notification$Builder;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/d;->a:Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;

    iput-object p2, p0, Lcom/sec/terrace/browser/webapps/d;->b:Landroid/app/Notification$Builder;

    iput-object p3, p0, Lcom/sec/terrace/browser/webapps/d;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/terrace/browser/webapps/d;->d:Z

    iput-object p5, p0, Lcom/sec/terrace/browser/webapps/d;->e:Ljava/lang/String;

    iput p6, p0, Lcom/sec/terrace/browser/webapps/d;->f:I

    return-void
.end method


# virtual methods
.method public final useApi(Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V
    .locals 7

    iget-object v2, p0, Lcom/sec/terrace/browser/webapps/d;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/terrace/browser/webapps/d;->d:Z

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/d;->a:Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;

    iget-object v1, p0, Lcom/sec/terrace/browser/webapps/d;->b:Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/sec/terrace/browser/webapps/d;->e:Ljava/lang/String;

    iget v5, p0, Lcom/sec/terrace/browser/webapps/d;->f:I

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;->c(Lcom/sec/terrace/browser/webapps/TinWebApkServiceClient;Landroid/app/Notification$Builder;Ljava/lang/String;ZLjava/lang/String;ILorg/chromium/webapk/lib/runtime_library/IWebApkApi;)V

    return-void
.end method

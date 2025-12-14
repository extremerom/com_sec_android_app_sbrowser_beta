.class public final synthetic Lcom/sec/terrace/browser/webapps/installer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/a;->a:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    iput-object p2, p0, Lcom/sec/terrace/browser/webapps/installer/a;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/a;->a:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/a;->b:Ljava/io/File;

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->a(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;Ljava/io/File;)V

    return-void
.end method

.class public final synthetic Lcom/sec/terrace/browser/shortcut_helper/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/shortcut_helper/a;->a:Landroid/content/Intent;

    iput-wide p2, p0, Lcom/sec/terrace/browser/shortcut_helper/a;->b:J

    return-void
.end method


# virtual methods
.method public final onWebappDataStorageRetrieved(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/shortcut_helper/a;->a:Landroid/content/Intent;

    iget-wide v1, p0, Lcom/sec/terrace/browser/shortcut_helper/a;->b:J

    invoke-static {v0, v1, v2, p1}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->f(Landroid/content/Intent;JLcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V

    return-void
.end method

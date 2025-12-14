.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$OriginVerificationListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

.field public final synthetic b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

.field public final synthetic c:LH/y;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

.field public final synthetic g:Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/ClientManager;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;LH/y;IZLcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->a:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->c:LH/y;

    iput p4, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->d:I

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->e:Z

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->f:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->g:Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;

    return-void
.end method


# virtual methods
.method public final onOriginVerified(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;ZLjava/lang/Boolean;)V
    .locals 11

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->g:Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;

    iget v3, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->d:I

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->e:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->a:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->c:LH/y;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/customtabs/e;->f:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    move-object v10, p4

    invoke-static/range {v0 .. v10}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->b(Lcom/sec/android/app/sbrowser/customtabs/ClientManager;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;LH/y;IZLcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;ZLjava/lang/Boolean;)V

    return-void
.end method

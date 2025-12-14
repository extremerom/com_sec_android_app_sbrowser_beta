.class public final synthetic Lcom/sec/android/app/sbrowser/capsule/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/capsule/a;->a:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/capsule/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/capsule/a;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/capsule/a;->d:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    return-void
.end method


# virtual methods
.method public final onInitialized()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/capsule/a;->a:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/capsule/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/capsule/a;->c:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/capsule/a;->d:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;->a(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    return-void
.end method

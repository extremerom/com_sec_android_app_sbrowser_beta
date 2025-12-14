.class public final synthetic Lcom/sec/android/app/sbrowser/settings/password/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;
.implements Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletableFuture;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/password/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/a;->b:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/password/a;->a:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/a;->b:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

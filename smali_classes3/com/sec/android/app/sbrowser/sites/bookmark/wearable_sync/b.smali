.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/e;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/b;->a:Ljava/lang/String;

    check-cast p1, Ljava/io/OutputStream;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper$1;->b(Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

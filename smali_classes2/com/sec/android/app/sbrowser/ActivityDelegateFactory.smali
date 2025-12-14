.class public Lcom/sec/android/app/sbrowser/ActivityDelegateFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createActivityDelegate(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/android/app/sbrowser/BaseActivityDelegate;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/BaseActivityDelegate;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/BaseActivityDelegate;-><init>(Lcom/sec/terrace/TerraceActivity;)V

    return-object v0
.end method

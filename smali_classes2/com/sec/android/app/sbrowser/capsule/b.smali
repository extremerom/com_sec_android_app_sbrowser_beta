.class public final synthetic Lcom/sec/android/app/sbrowser/capsule/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/capsule/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/capsule/b;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5;->a(Landroid/content/Context;)V

    return-void
.end method

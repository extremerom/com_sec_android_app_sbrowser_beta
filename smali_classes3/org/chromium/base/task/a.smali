.class public final synthetic Lorg/chromium/base/task/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lorg/chromium/base/task/AsyncTask;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/task/AsyncTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/task/a;->a:Lorg/chromium/base/task/AsyncTask;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/task/a;->a:Lorg/chromium/base/task/AsyncTask;

    invoke-static {p0}, Lorg/chromium/base/task/AsyncTask;->c(Lorg/chromium/base/task/AsyncTask;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

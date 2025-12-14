.class Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$SimpleTracerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleTracerHolder"
.end annotation


# static fields
.field public static inst:Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$SimpleTracerHolder;->inst:Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;

    return-void
.end method

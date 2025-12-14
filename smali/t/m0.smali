.class public final Lt/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lt/q0;


# direct methods
.method public constructor <init>(Lt/q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/m0;->a:Lt/q0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lt/m0;->a:Lt/q0;

    invoke-virtual {p0}, Lt/q0;->clearListSelection()V

    return-void
.end method

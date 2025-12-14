.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/E;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/E;->a:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessStatusLogger;->b(I)V

    return-void
.end method

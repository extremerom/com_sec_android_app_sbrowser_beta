.class public final synthetic Lcom/sec/android/app/sbrowser/si_log/model/db/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/e;->a:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/e;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LS2/a;

    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/e;->a:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/e;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->a(IILS2/a;)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;

    move-result-object p0

    return-object p0
.end method

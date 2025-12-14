.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;


# direct methods
.method public synthetic constructor <init>(JLcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/r;->a:J

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/r;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, LS2/a;

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/r;->a:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/r;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->k(JLcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0
.end method

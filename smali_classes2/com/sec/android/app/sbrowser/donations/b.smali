.class public final synthetic Lcom/sec/android/app/sbrowser/donations/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/s;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/donations/b;->a:Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/y;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/donations/b;->a:Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;

    check-cast p1, Lv/p;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->d(Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;Lv/p;)Lcom/google/common/util/concurrent/y;

    move-result-object p0

    return-object p0
.end method

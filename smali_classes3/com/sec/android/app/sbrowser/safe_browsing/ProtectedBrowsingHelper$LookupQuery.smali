.class Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LookupQuery"
.end annotation


# instance fields
.field final mCallbackId:J

.field mThreatsOfInterest:[I

.field mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;->mCallbackId:J

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;->mUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;->mThreatsOfInterest:[I

    return-void
.end method

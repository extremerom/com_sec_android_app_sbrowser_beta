.class Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileData"
.end annotation


# instance fields
.field public mClass:Ljava/lang/String;

.field public mItem:Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;

.field public mStartTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mClass:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mItem:Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mStartTime:J

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;-><init>()V

    return-void
.end method

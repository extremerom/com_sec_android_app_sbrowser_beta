.class public Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceUpdate;
.super Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "update"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;->mValues:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;->mSelection:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;->mSelectionArgs:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs onEnd([Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;->onEnd([Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;->onStart()V

    return-void
.end method

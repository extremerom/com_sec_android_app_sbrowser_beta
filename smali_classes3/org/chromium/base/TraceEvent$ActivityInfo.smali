.class public Lorg/chromium/base/TraceEvent$ActivityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityInfo"
.end annotation


# instance fields
.field public mActivityName:Ljava/lang/String;

.field public mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/chromium/base/TraceEvent$ViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/TraceEvent$ActivityInfo;->mActivityName:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x7d

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/chromium/base/TraceEvent$ActivityInfo;->mViews:Ljava/util/ArrayList;

    return-void
.end method

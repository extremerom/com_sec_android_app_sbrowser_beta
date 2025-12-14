.class public Lorg/chromium/components/ukm/UkmRecorder$Metric;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/ukm/UkmRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metric"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/ukm/UkmRecorder$Metric;->mName:Ljava/lang/String;

    iput p2, p0, Lorg/chromium/components/ukm/UkmRecorder$Metric;->mValue:I

    return-void
.end method

.class final Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaButtonInfo"
.end annotation


# instance fields
.field final mDescriptionResId:I

.field final mIconResId:I

.field final mIntentString:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;->mIconResId:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;->mDescriptionResId:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;->mIntentString:Ljava/lang/String;

    return-void
.end method

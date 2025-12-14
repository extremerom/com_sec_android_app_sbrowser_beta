.class Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/webapp/WebappManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchData"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mIsForWebApk:Z

.field private final mTaskIdForBringToFront:I

.field private final mUrl:Ljava/lang/String;

.field private final mWebApkPackageName:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p4, p5, p1}, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->mUrl:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->mIsForWebApk:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->mWebApkPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->mTaskIdForBringToFront:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->mIsForWebApk:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->mTaskIdForBringToFront:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappManager$LaunchData;->mWebApkPackageName:Ljava/lang/String;

    return-object p0
.end method

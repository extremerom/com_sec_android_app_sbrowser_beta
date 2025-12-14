.class Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/device/CidUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RSARule"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mNeedToCheckEEA:Z

.field private mPattern:Ljava/util/regex/Pattern;

.field private mReplacement:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->mPattern:Ljava/util/regex/Pattern;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->mReplacement:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->mNeedToCheckEEA:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->mNeedToCheckEEA:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;)Ljava/util/regex/Pattern;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->mPattern:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->mReplacement:Ljava/lang/String;

    return-object p0
.end method

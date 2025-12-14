.class public Lorg/chromium/ui/base/UiAndroidFeatureList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final sRequireLeadingInTextViewWithLeading:Lorg/chromium/base/MutableFlagWithSafeDefault;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "RequireLeadingInTextViewWithLeading"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/ui/base/UiAndroidFeatureList;->newMutableFlagWithSafeDefault(Ljava/lang/String;Z)Lorg/chromium/base/MutableFlagWithSafeDefault;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/base/UiAndroidFeatureList;->sRequireLeadingInTextViewWithLeading:Lorg/chromium/base/MutableFlagWithSafeDefault;

    return-void
.end method

.method private static newMutableFlagWithSafeDefault(Ljava/lang/String;Z)Lorg/chromium/base/MutableFlagWithSafeDefault;
    .locals 1

    invoke-static {}, Lorg/chromium/ui/base/UiAndroidFeatureMap;->getInstance()Lorg/chromium/ui/base/UiAndroidFeatureMap;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/chromium/base/FeatureMap;->mutableFlagWithSafeDefault(Ljava/lang/String;Z)Lorg/chromium/base/MutableFlagWithSafeDefault;

    move-result-object p0

    return-object p0
.end method

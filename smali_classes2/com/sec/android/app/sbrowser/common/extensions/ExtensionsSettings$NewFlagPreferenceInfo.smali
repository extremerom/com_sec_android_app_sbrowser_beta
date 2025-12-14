.class Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewFlagPreferenceInfo"
.end annotation


# instance fields
.field public final fallback:Z

.field public final hasSubItem:Z

.field public final key:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;->key:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;->fallback:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;->hasSubItem:Z

    return-void
.end method

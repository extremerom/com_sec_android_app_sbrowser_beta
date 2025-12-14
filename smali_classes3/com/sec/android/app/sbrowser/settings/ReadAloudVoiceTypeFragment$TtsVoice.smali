.class Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TtsVoice"
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mName:Ljava/lang/String;

.field private final mVariant:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->mVariant:Ljava/lang/String;

    new-instance p1, Ljava/util/Locale;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aget-object p2, p2, p3

    invoke-direct {p1, v0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;->mVariant:Ljava/lang/String;

    return-object p0
.end method

.class Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->onBindViewHolder(Lw2/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$1;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$1;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->l(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$1;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

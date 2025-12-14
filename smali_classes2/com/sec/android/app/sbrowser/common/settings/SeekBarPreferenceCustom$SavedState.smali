.class Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# instance fields
.field private mMax:F

.field private mMin:F

.field private mStep:F

.field private mValue:F


# direct methods
.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->mMax:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->mMin:F

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->mStep:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->mValue:F

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->mMax:F

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->mMin:F

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->mStep:F

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->mValue:F

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->mMin:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->mMax:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->mStep:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$SavedState;->mValue:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

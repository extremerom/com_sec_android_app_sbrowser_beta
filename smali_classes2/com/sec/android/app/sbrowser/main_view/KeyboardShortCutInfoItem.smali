.class public Lcom/sec/android/app/sbrowser/main_view/KeyboardShortCutInfoItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mModifiers:I

.field mShortcut:I

.field mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortCutInfoItem;->mTitle:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortCutInfoItem;->mShortcut:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortCutInfoItem;->mModifiers:I

    return-void
.end method

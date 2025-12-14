.class public Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemChooserLabels"
.end annotation


# instance fields
.field public final noneFound:Ljava/lang/CharSequence;

.field public final positiveButton:Ljava/lang/CharSequence;

.field public final searching:Ljava/lang/CharSequence;

.field public final statusActive:Ljava/lang/CharSequence;

.field public final statusIdleNoneFound:Ljava/lang/CharSequence;

.field public final statusIdleSomeFound:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->title:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->searching:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->noneFound:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->statusActive:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->statusIdleNoneFound:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->statusIdleSomeFound:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->positiveButton:Ljava/lang/CharSequence;

    return-void
.end method

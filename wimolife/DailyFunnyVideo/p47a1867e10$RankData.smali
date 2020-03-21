.class public final Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;
.super Ljava/lang/Object;
.source "p47a1867e10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wimolife/DailyFunnyVideo/p47a1867e10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RankData"
.end annotation


# instance fields
.field public mIndex:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mStar:Ljava/lang/String;

.field public mVote:Ljava/lang/String;

.field final synthetic this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;


# direct methods
.method public constructor <init>(Lcom/wimolife/DailyFunnyVideo/p47a1867e10;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "index"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "vote"    # Ljava/lang/String;
    .param p5, "star"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;->this$0:Lcom/wimolife/DailyFunnyVideo/p47a1867e10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;->mIndex:Ljava/lang/String;

    .line 196
    iput-object p3, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;->mName:Ljava/lang/String;

    .line 197
    iput-object p4, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;->mVote:Ljava/lang/String;

    .line 198
    iput-object p5, p0, Lcom/wimolife/DailyFunnyVideo/p47a1867e10$RankData;->mStar:Ljava/lang/String;

    .line 199
    return-void
.end method
